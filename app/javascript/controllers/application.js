import "@hotwired/turbo-rails"

import { Application } from "@hotwired/stimulus"

const application = Application.start()

application.debug = false

window.Stimulus = application

document.addEventListener("turbo:load", () => {
  setTimeout(() => {
    document.querySelectorAll("#flash_messages .alert").forEach((alert) => {
      alert.remove()
    })
  }, 3000)
})

export { application }