import {createRoot} from "react-dom"
import { App } from "./components"
import {BrowserRouter} from "react-router-dom"
import "./index.css"

let domNode = document.getElementById("root")
let root = createRoot(domNode)
root.render(
    <div>
        <BrowserRouter>
             <App />
        </BrowserRouter>
    </div>
    
)