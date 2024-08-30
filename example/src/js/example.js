import { MyClubAppWidget } from 'myclub-widget-plugin';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    MyClubAppWidget.echo({ value: inputValue })
}
