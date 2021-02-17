import { Controller } from "stimulus";

export default class extends Controller {
    show() {
        this.element.classList.remove('hidden');
    }

    // hide() {
    //     this.formTarget.classList.remove('hidden');
    // }
}
