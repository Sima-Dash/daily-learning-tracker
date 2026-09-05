import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("turbo:load", () => {
  setTimeout(() => {
    document.querySelectorAll("#flash_messages .alert").forEach((alert) => {
      alert.remove()
    })
  }, 3000)
})