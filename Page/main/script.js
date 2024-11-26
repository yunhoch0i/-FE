document.addEventListener('DOMContentLoaded', () => {
    const tabButtons = document.querySelectorAll('.tab-button');
    const tabContents = document.querySelectorAll('.tab-content');

    tabButtons.forEach(button => {
        button.addEventListener('click', () => {
            // 모든 탭 버튼과 콘텐츠 초기화
            tabButtons.forEach(btn => btn.classList.remove('active'));
            tabContents.forEach(content => (content.style.display = 'none'));

            // 선택된 탭 활성화
            button.classList.add('active');
            const target = button.getAttribute('data-tab');
            document.getElementById(target).style.display = 'block';
        });
    });
});
