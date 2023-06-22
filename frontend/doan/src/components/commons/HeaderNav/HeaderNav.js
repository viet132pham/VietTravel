import React, { useState } from "react";
import "../styles/HeaderNav/HeaderNav.scss";
import { useHistory } from "react-router-dom";
import { useSelector } from "react-redux";
import { Button } from "@mui/material";
import Snackbar from "@mui/material/Snackbar";
import Alert from "@mui/material/Alert";



function HeaderNav(props) {
  const { handleOpenLoginForm, handleOpenRegisterForm } = props;

  const [showSnackbar, setShowSnackbar] = useState(false);
  const [showAlert, setShowAlert] = useState(false);
  const [showDropDown, setShowDropDown] = useState(false);

  const account = useSelector((state) => state.auth.account);

  const history = useHistory();

  const CustomSnackbar = (props) => (
    <Snackbar
      autoHideDuration={4000}
      open={showSnackbar}
      onClose={onCloseClickHandler}
      anchorOrigin={{ horizontal: "center", vertical: "top" }}
      children={props.children}
    ></Snackbar>
  );
  
  const onCloseClickHandler = (event) => {
    setShowSnackbar(false);
  };

  const handleRedirectPage = (pageUrl) => {
    try {
      const token = sessionStorage.getItem('token');
      if(token){
        history.push(`/${pageUrl}`);
      }
      else {
        setShowAlert(true);
        setShowSnackbar(true);
      }
    } catch(e) {
      window.alert("You must be login for this function");
      history.push(`/`);
    }

  };

  const renderDropdown = () => {
    return (
      <div className="dropdown-wrapper">
        <div>Blog</div>
        <div>About us</div>
        <div>Contact us</div>
      </div>
    );
  };

  return (
    <div className="header-nav-wrapper">
      <div className="nav-bar-top d-flex">
        <div className="nav-bar left d-flex">
          <div className="phone">(024) 2242 0777</div>
          <div className="email"> vietpt@travel.com.vn</div>
        </div>
        <div className="nav-bar right d-flex">
          {account?.username ? (
            <div className="d-flex">
              <div className="account d-flex">
                <div className="avatar mr-2">
                  <i
                    className="fa-solid fa-user"
                    style={{ color: "#0F1824" }}
                  ></i>
                </div>
                <div className="ml-2 d-flex align-items-center text-uppercase">
                  {account.username}
                </div>
              </div>
              <div className="logout">
                <div className="icon"></div>
                <div>
                  <Button>Logout</Button>
                </div>
              </div>
            </div>
          ) : (
            <>
              <div className="login" onClick={() => handleOpenLoginForm()}>
                Đăng nhập
              </div>
              <div
                className="register"
                onClick={() => handleOpenRegisterForm()}
              >
                Đăng ký
              </div>
            </>
          )}
        </div>
      </div>
      <div className="nav-bar-bottom">
        <div className="nav-bar left">My Travel</div>
        <div className="nav-bar right">
          <div onClick={() => history.push("")}>Home</div>
          <div onClick={() => handleRedirectPage("hotel")}>Hotel</div>
          <div onClick={() => handleRedirectPage("tour")}>Tour</div>
          <div onClick={() => handleRedirectPage("vehicle")}>Vehicle</div>
          <div className="div-page" onClick={() => setShowDropDown(!showDropDown)}>
            <div className="d-flex">
              <span style={{marginRight: '8px'}}>Page</span>
              <span>
                <i class="fa-solid fa-chevron-down"></i>
              </span>
            </div>
            {showDropDown ? renderDropdown() : null}
          </div>
        </div>
      </div>
      {showAlert ? (
        <CustomSnackbar>
          <Alert severity="error">An error occurred, please login first</Alert>
        </CustomSnackbar>
      ) : null}
    </div>
  );
}
export default HeaderNav;
