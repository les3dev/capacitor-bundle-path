import { BundlePath } from '@les3dev/capacitor-bundle-path';
 
window.testGetPath = async () => {
  const inputValue = document.getElementById('pathInput').value;
 
  try {
    const result = await BundlePath.get_path({ path: inputValue });
 
    const outputEl = document.getElementById('output');
 
    if (result.path) {
      outputEl.textContent = 'Native path: ' + result.path;
      outputEl.style.color = 'green';
    } else {
      outputEl.textContent = 'Asset not found for path: ' + inputValue;
      outputEl.style.color = 'orange';
    }
  } catch (err) {
    document.getElementById('output').textContent = 'Error: ' + err.message;
    document.getElementById('output').style.color = 'red';
  }
};
 