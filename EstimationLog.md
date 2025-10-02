# Estimation Log

- WOD: E30/E31 BrowserHistory
- Attempt: 1
- Estimated time: 25 minutes
- Actual time: (record your time here)

Reflections:

- Did you finish within the estimated time? (yes/no)
- If you over/under estimated, why do you think that happened?
- What would you change in your process to improve future estimates?

Template for future attempts:

| Attempt | Estimated | Actual | Notes |
|---|---:|---:|---|
| 1 | 25m | (record) | Initial attempt |

Add additional rows for more attempts.
\n+## E34 Bootstrap conversion (branch: bootstrap-1)

- Attempt: 1
- Estimated time: 20 minutes
- Actual time: 35 minutes

Notes:

- Converted layout to Bootstrap 5 (CDN links added), replaced the TOC with a fixed-top dark navbar, wrapped content in a `.container` and converted the browser sections into a `.row` of three `.col` columns.
- Ensured logos are local (`images/firefox.png`, `images/ie.png`) and resized to 100×100; added `tools/resize-images.ps1` to automate resizing.
- Started a local static server (`npx http-server`) and verified `index.html`, `style.css`, and images served successfully at `http://127.0.0.1:8000`.

If more attempts are made, add rows to the table above with times and notes.
