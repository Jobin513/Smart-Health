const axios = require('axios');
const qs = require('qs'); // Add the qs library for encoding OAuth parameters

const apiUrl = 'https://sandbox-healthservice.priaid.ch/diagnosis';
const apiKey = 'Ji4w8RDr97QnEq6y3'; // Replace with your actual API key

const makeAPICall = async () => {
    // Define OAuth parameters
    const oauthParams = {
        grant_type: 'client_credentials',
        client_id: 'jobin513@gmail.com', // Replace with your client ID
        client_secret: 'YOUR_CLIENT_SECRET', // Replace with your client secret
    };

    // Encode OAuth parameters
    const encodedOAuthParams = qs.stringify(oauthParams);

    // Get an access token using client credentials grant
    let accessToken;
    try {
        const tokenResponse = await axios.post('https://auth.priaid.ch/login', encodedOAuthParams, {
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
        });

        accessToken = tokenResponse.data.access_token;
        console.log('Access Token:', accessToken); // Log the access token
    } catch (error) {
        throw error;
    }

    // Make the API call with the obtained access token
    const params = {
        symptoms: JSON.stringify([16]), // Replace with the desired symptoms
        gender: 'male',
        year_of_birth: 1999, // Replace with the year of birth
        language: 'en-gb',
        format: 'json',
    };

    try {
        const response = await axios.get(apiUrl, {
            params,
            headers: {
                Authorization: `Bearer ${accessToken}`, // Include the access token in the headers
            },
        });

        const diagnosisData = response.data;
        console.log('API Response:', diagnosisData); // Log the API response
        return diagnosisData;
    } catch (error) {
        throw error;
    }
};

const insertDiagnosisIntoDatabase = (diagnosis) => {
    // Create a MySQL database connection
    const connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'smarthealth',
    });

    // Establish the database connection
    connection.connect();

    diagnosis.forEach((diagnosisItem) => {
        const { Issue } = diagnosisItem;
        const { ID, Name, Accuracy } = Issue;

        // Insert the data into the MySQL database
        const sql = 'INSERT INTO diseases (diseaseID, disease_name, accuracy) VALUES (?, ?, ?)';
        const values = [ID, Name, Accuracy];

        connection.query(sql, values, (error, results) => {
            if (error) {
                console.error('Error inserting data into the database:', error);
            } else {
                console.log('Data inserted successfully:', results);
            }
        });
    });

    // Close the database connection
    connection.end();
};

module.exports = { makeAPICall, insertDiagnosisIntoDatabase }