document.addEventListener('turbolinks:load', function() {
    const progressBar = document.querySelector(".progress-bar");

    if (progressBar) {
        const currentQuestion = progressBar.dataset.currrentQuestion;
        const questionsAmount = progressBar.dataset.numberOfQuestions;
        const percent = `${Math.round((currentQuestion * 100) / questionsAmount)}%`;

        progressBar.style.width = percent;
        progressBar.textContent = percent;
    }
})

