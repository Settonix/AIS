import React from "react";
import StoreIcon from "material-ui/svg-icons/action/store";
import { simpleRestClient, Admin, Resource } from "admin-on-rest";
import postgrestClient from "./client";

const App = () => (
  <Admin
    restClient={postgrestClient("http://localhost:4000")}
    title="Barlet Store"
  >
    <Resource {...require("./containers/stock.js")} icon={StoreIcon} />
    <Resource {...require("./containers/customer.js")} />
    <Resource {...require("./containers/artist.js")} />
    <Resource {...require("./containers/art.js")} />
    <Resource {...require("./containers/companies.js")} />
  </Admin>
);

export default App;
