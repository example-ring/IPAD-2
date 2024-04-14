import React from 'react';
import "./Main.css";

const MainCarousel = () => {
    return (
        <div id="mainCarousel" className="carousel slide mb-6" data-bs-ride="carousel" data-bs-interval="4000">
            {/* 하단 현재위치 */}
            <div className="carousel-indicators">
                <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="0" className="active"></button>
                <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="2"></button>
            </div>

            {/* carousel page1 */}
            <div className="carousel-inner">
                <div className="carousel-item active">
                    <img src="img/carousel1.jpg" alt="" />
                    <div className="container">
                        <div className="carousel-caption text-start">
                            <div id="title">치과의원 입지분석 서비스</div>
                            <div id="detail" className="col-xs-12 col-sm-12 col-lg-6">
                                치과 개원을 준비하는 의사를 위한 입지 분석<br />
                                {/* 유동인구, 치과 현황을 통한 입지분석 */}
                            </div>
                            {/* <button type="button">
                                <div className="temp">
                                    <a href="">자세히 알아보기</a>
                                </div>
                            </button> */}
                        </div>
                    </div>
                </div>

                {/* carousel page2 */}
                <div className="carousel-item">
                    <img src="img/carousel2.jpg" alt="" />
                    <div className="container">
                        <div className="carousel-caption text-start">
                            <div id="title">주거 인구 예측 서비스</div>
                            <div id="detail" className="col-xs-12 col-sm-12 col-lg-6">
                                주택 · 인구 데이터 분석을 통해 주거 인구 예측
                            </div>
                            {/* <button type="button"><a href="">자세히 알아보기</a></button> */}
                        </div>
                    </div>
                </div>

                {/* carousel page3 */}
                <div className="carousel-item">
                    <img src="img/carousel3.jpg" alt="" />
                    <div className="container">
                        <div className="carousel-caption text-start">
                            <div id="title">매출 예측 서비스</div>
                            <div id="detail" className="col-xs-12 col-sm-12 col-lg-6">
                                빅데이터 분석을 통한 매출 분석 서비스
                            </div>
                            {/* <button type="button"><a href="">자세히 알아보기</a></button> */}
                        </div>
                    </div>
                </div>

                {/* carousel 좌우 버튼 */}
                <button className="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev"></button>
                <button className="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next"></button>
            </div>
        </div>
    );
};

const Content1 = () => {
	return (
			<div id="content1" className="container-fluid">
					<div className="container-fluid">
							<div className="row">
									<div className="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<h1 id="analysisTitle">치과의원 개업 시 입지 선정의 <br />중요 Point</h1>
									</div>
							</div>

							<div className="container">
									<div className="row">
											<div id="analysisLeft" className="col-lg-6 ">
													<img src="img/mainFirstContent1.png" alt="" />
											</div>
											<div id="analysisRight" className="col-lg-6 ">
													<div>
															<h2>인구 분석</h2>
															<img src="img/mainFirstContent2.jpg" alt="" />
															<h6>신도시 유동인구와 거주인구를 파악하여 <br /> 어느입지에 치과를 설립해야 유리할까?</h6>
															<a href="populationStatus.html" className="btn">자세히 보기</a>
													</div>
													<div>
															<h2>치과 현황</h2>
															<img src="img/mainFirstContent2.jpg" alt="" />
															<h6>주변의 치과의원 수와 <br /> 개업 · 폐업의 수를 파악하여 개업이 가능할까?</h6>
															<a href="hospitalStatus.html" className="btn">자세히 보기</a>
													</div>
											</div>
									</div>
							</div>
					</div>
			</div>
	);
};

const Content2 = () => {
	return (
			<div id="content2" className="container-fluid">
					<div className="container-fluid">
							<div className="row">
									<div className="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<h1 id="analysisTitle">성공적인 개업을 위한 매출 분석</h1>
											<h6>정확한 분석을 원하시면 <a href="search.html">여기</a>를 클릭해주세요</h6>
									</div>
							</div>

							<div id="content2Bottom" className="container">
									<div className="row">
											<div id="content2Left" className="col-lg-6">
													<img src="img/mainSecondContent1.png" alt="" />
											</div>
											<div id="content2Right" className="col-lg-6">
													<div>
															<div><img src="img/mainSecondContent2.png" alt="" /></div>
															<div><img src="img/mainSecondContent3.png" alt="" /></div>
													</div>
													<div>
															<div><img src="img/mainSecondContent4.png" alt="" /></div>
															<div><img src="img/mainSecondContent5.png" alt="" /></div>
													</div>
											</div>
									</div>
							</div>
					</div>
			</div>
	);
};

const Content3 = () => {
	return (
			<div className="container">
					<div className="row">

							{/* 본문3 왼쪽 */}
							<div id="boardLeft" className="col-lg-6">
									<img src="img/mainThirdContent.jpg" alt="" />
							</div>

							{/* 본문3 오른쪽(게시판) */}
							<div id="boardRight" className="col-lg-6 ">
									<div id="title">
											<a href="#">Q&A</a>
									</div>
									<table className="table">
											<colgroup>
													<col width="10%" />
													<col width="60%" />
													<col width="30%" />
											</colgroup>
											<thead></thead>
											<tbody>
													<tr>
															<th>1</th>
															<td><a href="">게시글 1</a></td>
															<td>2022-02-22</td>
													</tr>
													<tr>
															<th>2</th>
															<td><a href="">게시글 2</a></td>
															<td>2022-02-22</td>
													</tr>
													<tr>
															<th>3</th>
															<td><a href="">게시글 3</a></td>
															<td>2022-02-22</td>
													</tr>
													<tr>
															<th>4</th>
															<td><a href="">게시글 4</a></td>
															<td>2022-02-22</td>
													</tr>
													<tr>
															<th>5</th>
															<td><a href="">게시글 5</a></td>
															<td>2022-02-22</td>
													</tr>
													<tr>
															<th>6</th>
															<td><a href="">게시글 6</a></td>
															<td>2022-02-22</td>
													</tr>
													<tr>
															<th>7</th>
															<td><a href="">게시글 7</a></td>
															<td>2022-02-22</td>
													</tr>
													<tr>
															<th>8</th>
															<td><a href="">게시글 8</a></td>
															<td>2022-02-22</td>
													</tr>
											</tbody>
									</table>
							</div>
					</div>
			</div>
	);
};

const Main = () => {
    return (
        <div>
            <MainCarousel />
            <Content1 />
            <Content2 />
            <Content3 />
        </div>
    );
};

export default Main;
