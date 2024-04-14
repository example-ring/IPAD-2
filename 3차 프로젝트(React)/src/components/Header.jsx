import React, { useState } from 'react';
import "./Header.css";

const Header = () => {
    const [isDropdownOpen, setIsDropdownOpen] = useState(false);

    const toggleDropdown = () => {
        setIsDropdownOpen(!isDropdownOpen);
    };

    return (
        <nav className="navbar fixed-top navbar-expand-lg">
            <div className="container">
                {/* LOGO */}
                <a className="navbar-brand fs-4" href="index.html">
                    <img src="img/logo.png" alt="Logo" />
                </a>
                {/* Toggle BTN(모바일 비율 아이콘) */}
                <button className="navbar-toggler shadow-none border-0" type="button" onClick={toggleDropdown}>
                    <span className="navbar-toggler-icon"></span>
                </button>

                {/* sidebar */}
                <div className={`offcanvas offcanvas-start ${isDropdownOpen ? 'show' : ''}`} tabIndex="-1" id="offcanvasNavbar">
                    {/* sidebar header */}
                    <div className="offcanvas-header border-bottom">
                        <h5 className="offcanvas-title" id="offcanvasNavbarLabel">
                            <img src="img/logo.png" alt="Sidebar Logo" />
                        </h5>
                        <button type="button" className="btn-close shadow-none" onClick={toggleDropdown}></button>
                    </div>
                    {/* sidebar body */}
                    <div className="offcanvas-body d-flex flex-column flex-lg-row p-4 p-lg-0">
                        <ul className="navbar-nav justify-content-center fs-5 flex-grow-1 pe-3">
                            <li className="nav-item mx-5"><a className="nav-link" href="locationRecommand.html">지역추천</a></li>
                            <li className="nav-item mx-5"><a className="nav-link" href="SaleAnalysis.html">매출분석</a></li>
                            <li className="nav-item dropdown mx-5">
                                <div className="dropdown-center">
                                    <a className="nav-link dropdown-toggle" href="#" role="button" onClick={toggleDropdown}>입지분석</a>
                                    <ul className="dropdown-menu">
                                        <li><a className="dropdown-item" href="locationAnalysis/population.html">인구분석</a></li>
                                        <li><a className="dropdown-item" href="locationAnalysis/hospital.html">치과현황</a></li>
                                        <li><a className="dropdown-item" href="locationAnalysis/map.html">지도</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li className="nav-item mx-5"><a className="nav-link" href="list.html">Q&A</a></li>
                        </ul>
                        <div className="d-flex flex-column flex-lg-row justify-content-center align-items-center gap-3">
                            {/* 세션에 로그인 정보가 없는 경우 */}
                            <a href="login.html" className="text-dark">로그인</a>
                            <a id="loginBtn" href="joinTs.html" className="text-white text-decoration-none px-3 py-1 rounded-4">회원가입</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    );
};

export default Header;
