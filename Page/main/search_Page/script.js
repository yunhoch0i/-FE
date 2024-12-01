document.addEventListener('DOMContentLoaded', () => {
    const filterButtons = document.querySelectorAll('.filter');
    const tabContents = document.querySelectorAll('.tab-content');

    // Function to show the appropriate tab content
    function showTabContent(filter) {
        tabContents.forEach(content => {
            if (content.id === filter) {
                content.classList.add('active'); // Show matched content
                content.style.display = 'block'; // Ensure it's visible
            } else {
                content.classList.remove('active'); // Hide unmatched content
                content.style.display = 'none'; // Ensure it's hidden
            }
        });
    }

    // Add click event listeners to filter buttons
    filterButtons.forEach(button => {
        button.addEventListener('click', () => {
            // Remove 'active' class from all buttons
            filterButtons.forEach(btn => btn.classList.remove('active'));
            // Add 'active' class to the clicked button
            button.classList.add('active');

            // Get the filter value and show corresponding content
            const filter = button.dataset.filter;
            if (filter === 'accuracy') {
                showTabContent('precision'); // Map "accuracy" to "precision"
            } else {
                showTabContent(filter); // Use the filter directly
            }
        });
    });

    // Set default view to 'precision' for accuracy
    showTabContent('precision');


    // Pagination functionality (placeholder for future integration)
    const paginationButtons = document.querySelectorAll('.pagination');
    paginationButtons.forEach(button => {
        button.addEventListener('click', () => {
            paginationButtons.forEach(btn => btn.classList.remove('active'));
            button.classList.add('active');
            console.log(`Page changed to: ${button.textContent}`);
        });
    });
});
