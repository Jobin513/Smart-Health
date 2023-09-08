document.addEventListener("DOMContentLoaded", function () {
    // Fetch the list of symptoms from the PHP script.
    fetch("fetch.php")
        .then((response) => response.json())
        .then((data) => {
            const symptoms = data;

            // Get a reference to the select element.
            const symptomSelect = document.getElementById("symptoms");

            // Add an event listener to the form for symptom checking.
            document.getElementById("symptomForm").addEventListener("submit", function (e) {
                e.preventDefault();
                const selectedSymptomName = document.getElementById("symptoms").value;
                const formData = new FormData(document.getElementById("symptomForm"));

                // Send a POST request to diagnosis.php with the form data
                fetch("diagnosis.php", {
                    method: "POST",
                    body: formData,
                })
                    .then((response) => response.json())
                    .then((data) => {
                        // Handle the response here
                        const resultContainer = document.getElementById("resultContainer");
                        resultContainer.innerHTML = ""; // Clear previous results

                        if (data.length > 0) {
                            data.forEach((item) => {
                                const resultItem = document.createElement("div");
                                resultItem.textContent = `${item.issue_name}, ${item.accuracy}%`;
                                resultContainer.appendChild(resultItem);
                            });
                        } else {
                            const noResultItem = document.createElement("div");
                            noResultItem.textContent = "No matching issues found.";
                            resultContainer.appendChild(noResultItem);
                        }
                    })
                    .catch((error) => {
                        console.error("Error fetching diagnosis:", error);
                    });
            });
        })
        .catch((error) => {
            console.error("Error fetching symptoms:", error);
        });
});
