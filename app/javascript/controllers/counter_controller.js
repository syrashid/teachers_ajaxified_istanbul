import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'count' ];

  connect() {
    setInterval(() => {
this.refresh();
    }, 3000);
  }

  refresh = () => {
    fetch('/teachers', { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        this.countTarget.innerText = data.teachers.length;
      });
  }
}
