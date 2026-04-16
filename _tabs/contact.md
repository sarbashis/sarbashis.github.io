---
title: Contact
icon: fas fa-envelope
order: 5
---

Have a question, collaboration idea, or just want to say hello? Feel free to reach out using the form below and I'll get back to you as soon as possible.

<style>
.contact-form {
  max-width: 600px;
}
.contact-form label {
  display: block;
  margin-bottom: 0.5rem;
  font-weight: 600;
  color: var(--text-color, inherit);
}
.contact-form .form-group {
  margin-bottom: 1.25rem;
}
.contact-form input[type="text"],
.contact-form input[type="email"],
.contact-form textarea {
  width: 100%;
  padding: 0.6rem 0.75rem;
  border: 1px solid var(--btn-border-color, #d1d5db);
  border-radius: 0.375rem;
  background-color: var(--card-bg, #fff);
  color: var(--text-color, inherit);
  font-size: 1rem;
  font-family: inherit;
  transition: border-color 0.2s ease;
}
.contact-form input[type="text"]:focus,
.contact-form input[type="email"]:focus,
.contact-form textarea:focus {
  outline: none;
  border-color: var(--link-color, #007bff);
  box-shadow: 0 0 0 3px rgba(0, 123, 255, 0.15);
}
.contact-form textarea {
  min-height: 150px;
  resize: vertical;
}
.contact-form button[type="submit"] {
  display: inline-block;
  padding: 0.6rem 1.5rem;
  background-color: var(--link-color, #007bff);
  color: #fff;
  border: none;
  border-radius: 0.375rem;
  font-size: 1rem;
  font-weight: 600;
  cursor: pointer;
  transition: opacity 0.2s ease;
}
.contact-form button[type="submit"]:hover {
  opacity: 0.85;
}
</style>

<form class="contact-form" action="https://formspree.io/myypqoyl" method="POST">
  <div class="form-group">
    <label for="contact-name">Your Name</label>
    <input type="text" id="contact-name" name="_name" required>
  </div>
  <div class="form-group">
    <label for="contact-email">Your Email</label>
    <input type="email" id="contact-email" name="_replyto" required>
  </div>
  <div class="form-group">
    <label for="contact-message">Your Message</label>
    <textarea id="contact-message" name="message" required></textarea>
  </div>
  <button type="submit">Send Message</button>
</form>
