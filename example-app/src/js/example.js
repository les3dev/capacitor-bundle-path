import { BundlePath } from '@les3dev/capacitor-bundle-path';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    BundlePath.echo({ value: inputValue })
}
