// dropdown_controller.js
import {Controller} from "stimulus"

export default class extends Controller {
    static targets = ["menu", "button"]
    static values = { open: Boolean }

    toggle() {
      console.log('toogling');
      this.openValue = !this.openValue;
      this.menuTarget.classList.toggle("hidden");
    }
}
