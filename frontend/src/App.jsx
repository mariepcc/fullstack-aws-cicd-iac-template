import { useEffect, useState } from "react";
import "./App.css";

function App() {
  const [data, setData] = useState(null);

  useEffect(() => {
    fetch("/api/data")
      .then((res) => res.json())
      .then((json) => setData(json))
      .catch((err) => console.error("Connection to API failed:", err));
  }, []);

  return (
    <div className="App">
      <h1>Frontend React</h1>
      <div className="card">
        {data ? (
          <div>
            <p>
              Connected to: <strong>{data.project}</strong>
            </p>
            <p>Status: {data.status}</p>
          </div>
        ) : (
          <p>Connecting to backend...</p>
        )}
      </div>
    </div>
  );
}

export default App;
