const revealNodes = [...document.querySelectorAll("[data-reveal]")];

revealNodes.forEach((node, index) => {
  node.style.setProperty("--delay", `${Math.min(index * 70, 560)}ms`);
});

const revealObserver = new IntersectionObserver(
  (entries, observer) => {
    entries.forEach((entry) => {
      if (!entry.isIntersecting) {
        return;
      }

      entry.target.classList.add("is-visible");
      observer.unobserve(entry.target);
    });
  },
  {
    threshold: 0.18,
    rootMargin: "0px 0px -6% 0px",
  }
);

revealNodes.forEach((node) => {
  revealObserver.observe(node);
});
