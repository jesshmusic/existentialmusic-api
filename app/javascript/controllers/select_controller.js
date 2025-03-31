import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select"

export default class extends Controller {
  // We bind the select to tom-select on connect
  connect() {
    new TomSelect(this.element, {
      plugins: ["remove_button", "clear_button"]
    })
  }
}