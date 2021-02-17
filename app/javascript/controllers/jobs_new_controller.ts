import { Controller } from "stimulus";

export default class extends Controller {
    clientChanged(e: Event) {
        if (e.target instanceof HTMLSelectElement) {
            const id = parseInt(e.target.value, 10);
            if (id === -1) {
                // Is this the best way to communicate between controllers?
                const event = new CustomEvent("clients-new__show");
                window.dispatchEvent(event);
            } else {
                const event = new CustomEvent("clients-new__hide");
                window.dispatchEvent(event);
            }
        }
    }
}
