window.addEventListener('DOMContentLoaded', function () {
    new ComponentToggle();
    window.arrCloseElements = [];
});

function onDomContentLoad() {
    const c = new ComponentToggle();
    c.State();
}

Sys.WebForms.PageRequestManager.getInstance().add_endRequest(onDomContentLoad);

class ComponentToggle {
    constructor() {
        this._btnToggle = 'btnToggle';
        this._nodeList = document.getElementsByClassName(this._btnToggle);
        this._arrayElements = Array.apply(null, this._nodeList);
        this.AddEventListener();
    }


    AddEventListener() {
        this._arrayElements.forEach(x => x.addEventListener('click', this.EventClick));
    }

    EventClick(event) {
        let tituloElement = event.target.parentNode
        let contentElement = event.target.parentNode.nextElementSibling;
        let idBtn = event.target.id;

        $(function () {
            $(contentElement).slideToggle();
        });
        if (tituloElement.classList.contains('eventClose')) {
            tituloElement.classList.remove('eventClose');
            tituloElement.classList.add('eventOpen');
            document.getElementById(idBtn).classList.remove('fas', 'fa-chevron-down');
            document.getElementById(idBtn).classList.add('fas', 'fa-chevron-up');

            window.arrCloseElements.forEach(function (e, index) {
                if (e.id == event.currentTarget.id)
                    window.arrCloseElements.splice(index, 1);
            });

        } else {
            tituloElement.classList.remove('eventOpen');
            tituloElement.classList.add('eventClose');
            document.getElementById(idBtn).classList.remove('fas', 'fa-chevron-up');
            document.getElementById(idBtn).classList.add('fas', 'fa-chevron-down');

            window.arrCloseElements.forEach(function (e, index) {
                if (e.id == event.currentTarget.id)
                    window.arrCloseElements.splice(index, 1);
            });

            window.arrCloseElements.push(event.currentTarget);
        }
    }

    State() {

        function handler(e) {
            debugger
            let idBtn = e.id;
            let idTitulo = e.parentNode.id;
            let idContent = e.parentNode.nextElementSibling.id;

            document.getElementById(idBtn).classList.remove('fas', 'fa-chevron-up');
            document.getElementById(idBtn).classList.add('fas', 'fa-chevron-down');
            document.getElementById(idTitulo).classList.add('eventClose');
            document.getElementById(idContent).style.display = 'none';
        }

        if (window.arrCloseElements != undefined) {
            if (window.arrCloseElements.length != 0) {
                window.arrCloseElements.forEach(handler)
            }
        }
    }
}
