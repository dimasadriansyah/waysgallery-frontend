import axios from "axios";

export const API = axios.create({
  baseURL: "api.dimas.onlinecamp.id",
});

const setAuth = (token) => {
  if (token) {
    axios.defaults.headers.common["Authorization"] = token;
  } else {
    delete axios.defaults.headers.common["Authorization"];
  }
};

export default setAuth;
