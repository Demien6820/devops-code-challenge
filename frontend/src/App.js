import React, { useEffect, useState } from 'react'
import './App.css';

function App() {
  const [successMessage, setSuccessMessage] = useState() 
  const [failureMessage, setFailureMessage] = useState() 
  const apiUrl = process.env.REACT_APP_API_URL;

  useEffect(() => {
    const getId = async () => {
      try {
        const resp = await fetch(apiUrl);
        setSuccessMessage((await resp.json()).id)
      }
      catch(e) {
        setFailureMessage(e.message)
      }
    }
    getId()
  })

  return (
    <div className="App">
      {!failureMessage && !successMessage ? 'Fetching...' : null}
      {failureMessage ? failureMessage : null}
      {successMessage ? successMessage : null}
    </div>
  );
}

export default App;
