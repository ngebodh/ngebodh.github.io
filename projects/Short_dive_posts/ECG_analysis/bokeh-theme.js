document.addEventListener("DOMContentLoaded", function() {
    const isDark = document.documentElement.classList.contains("dark");
    const plots = document.querySelectorAll(".bk-root");

    plots.forEach(plot => {
        const modelId = plot.dataset.rootId;
        const model = Bokeh.index[modelId];

        if (model) {
            model.document.theme = isDark ? "dark_minimal" : "caliber"; // Change to a light theme if needed
        }
    });
});