// The site intentionally works without JavaScript. Keep enhancements optional.
document.querySelectorAll('details').forEach((detail) => {
  detail.addEventListener('toggle', () => {
    if (!detail.open) return;
    document.querySelectorAll('details[open]').forEach((other) => {
      if (other !== detail) other.open = false;
    });
  });
});
