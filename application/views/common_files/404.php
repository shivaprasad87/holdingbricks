
<style>
@import url("https://fonts.googleapis.com/css?family=Special+Elite");
html {
  width: 100%;
  height: 100%;
}

body {
  width: 100%;
  height: 100%;
  padding: 0;
  margin: 0;
  background: linear-gradient(180deg, #265A60, #665238) fixed;
  font-family: 'Special Elite', cursive;
}

.main-wrapper {
  position: relative;
  width: 100%;
  height: 100%;
  overflow: hidden;
}

.error {
  margin: 10px auto 0;
  display: flex;
  display: -ms-flexbox;
  display: -webkit-box;
  display: -webkit-flex;
  justify-content: center;
  -ms-flex-pack: justify;
  -webkit-box-pack: justify;
  -webkit-justify-content: center;
  align-items: baseline;
  height: 230px;
  width: 500px;
}
.error__num {
  color: #fff;
  font-size: 200px;
  margin: 0;
}
.error__moon {
  position: relative;
  width: 200px;
  height: 200px;
  background-color: #F0DB90;
  border-radius: 50%;
  box-shadow: 0 0 10px #ffffff, 0 0 0 2px rgba(143, 101, 169, 0.1);
}

.house {
  width: 220px;
  height: 215px;
  position: absolute;
  bottom: 4px;
  overflow: hidden;
  z-index: 0;
  transform: rotate(-10deg);
}
.house__window {
  position: absolute;
  background-color: #F6E833;
  z-index: 10;
  animation: window 3s linear infinite;
}
.house__window:before {
  content: "";
  background-color: #F6E833;
  animation: window 3s linear infinite;
}
.house__window:after {
  content: "";
  background-color: #F6E833;
  animation: window 3s linear infinite;
}
.house__right {
  position: absolute;
  bottom: 0;
  left: 153px;
  width: 27px;
  height: 100px;
  transform: rotate(23deg);
  background-color: #000;
}
.house__right:before {
  content: "";
  position: absolute;
  top: -35px;
  right: -19px;
  width: 0;
  height: 0;
  border-left: 30px solid transparent;
  border-right: 30px solid transparent;
  border-bottom: 36px solid #000;
  transform: rotate(-5deg);
}
.house__right:after {
  content: "";
  position: absolute;
  top: -1px;
  right: -12px;
  width: 0;
  height: 0;
  border-right: 15px solid transparent;
  border-top: 100px solid #000;
  transform: rotate(-4deg);
}
.house__right .house__window {
  width: 10px;
  height: 10px;
  position: absolute;
  left: 12px;
}
.house__right .house__window:after {
  width: 8px;
  height: 12px;
  position: absolute;
  left: 1px;
  top: 17px;
}
.house__center {
  position: absolute;
  bottom: 61px;
  left: 118px;
  width: 27px;
  height: 100px;
  transform: rotate(-3deg);
  background-color: #000;
}
.house__center .house__window {
  transform: rotate(4deg);
}
.house__center .house__window:first-of-type {
  width: 8px;
  height: 10px;
  position: absolute;
  top: 6px;
  left: 12px;
}
.house__center .house__window:first-of-type:after {
  width: 8px;
  height: 12px;
  position: absolute;
  left: 1px;
  top: 17px;
}
.house__center .house__window:nth-of-type(2) {
  left: 26px;
  width: 10px;
  height: 10px;
  position: absolute;
  top: 6px;
}
.house__center .house__window:nth-of-type(2):after {
  width: 8px;
  height: 12px;
  position: absolute;
  left: 1px;
  top: 17px;
}
.house__center:before {
  content: "";
  position: absolute;
  top: -53px;
  right: -27px;
  width: 0;
  height: 0;
  border-left: 33px solid transparent;
  border-right: 33px solid transparent;
  border-bottom: 54px solid #000;
  transform: rotate(-3deg);
}
.house__center:after {
  content: "";
  position: absolute;
  top: -5px;
  right: -11px;
  width: 15px;
  height: 90px;
  background-color: #000;
  transform: rotate(5deg);
}
.house__left {
  position: absolute;
  bottom: 56px;
  left: 54px;
  width: 25px;
  height: 60px;
  transform: rotate(-11deg);
  background-color: #000;
}
.house__left:before {
  content: "";
  position: absolute;
  top: -33px;
  right: -26px;
  width: 0;
  height: 0;
  border-left: 33px solid transparent;
  border-right: 33px solid transparent;
  border-bottom: 35px solid #000;
  transform: rotate(-3deg);
}
.house__left:after {
  content: "";
  position: absolute;
  top: -5px;
  right: -11px;
  width: 15px;
  height: 90px;
  background-color: #000;
  transform: rotate(5deg);
}
.house__left .house__window:first-of-type {
  width: 6px;
  height: 10px;
  position: absolute;
  top: 6px;
  left: 12px;
}
.house__left .house__window:first-of-type:after {
  width: 6px;
  height: 12px;
  position: absolute;
  left: 1px;
  top: 17px;
}
.house__left .house__window:nth-of-type(2) {
  left: 26px;
  width: 6px;
  height: 12px;
  position: absolute;
  top: 6px;
}
.house__left .house__window:nth-of-type(2):after {
  width: 6px;
  height: 12px;
  position: absolute;
  left: 0;
  top: 17px;
}
.house__mini {
  position: absolute;
  bottom: 52px;
  left: 25px;
  width: 14px;
  height: 35px;
  transform: rotate(-21deg);
  background-color: #000;
}
.house__mini:before {
  content: "";
  position: absolute;
  top: -25px;
  right: -9px;
  width: 0;
  height: 0;
  border-left: 17px solid transparent;
  border-right: 17px solid transparent;
  border-bottom: 26px solid #000;
  transform: rotate(1deg);
}
.house__mini:after {
  content: "";
  position: absolute;
  top: -3px;
  right: -1px;
  width: 8px;
  height: 37px;
  background-color: #000;
  transform: rotate(6deg);
}
.house__mini .house__window {
  width: 7px;
  height: 8px;
  position: absolute;
  left: 4px;
  top: 3px;
}
.house__mini .house__window:after {
  width: 5px;
  height: 6px;
  position: absolute;
  left: 1px;
  top: 13px;
}
.house__mini .bridge {
  position: absolute;
  bottom: -11px;
  left: 11px;
  width: 14px;
  height: 35px;
  transform: rotate(90deg);
  background-color: #000;
}
.house__bottom {
  position: absolute;
  bottom: -2px;
  left: 63px;
  width: 92px;
  height: 80px;
  transform: rotate(-10deg);
  background-color: #000;
}
.house__bottom:after {
  content: "";
  position: absolute;
  bottom: -5px;
  left: 57px;
  width: 35px;
  height: 90px;
  transform: rotate(10deg);
  background-color: #000;
}
.house__bottom .house__window {
  width: 26px;
  height: 34px;
  position: absolute;
  left: 39px;
  top: 30px;
  transform: rotate(10deg);
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
}

.graves {
  width: 300px;
  height: 85px;
  position: absolute;
  bottom: -2px;
  right: 14px;
  overflow: hidden;
  z-index: 0;
}

.grave {
  position: absolute;
  width: 15px;
  height: 80px;
  transform: rotate(0);
  background-color: #000;
  z-index: 0;
  animation: grave 3s linear 3s infinite;
}
.grave:before {
  content: "";
  position: absolute;
  top: 5px;
  right: 0;
  width: 10px;
  height: 40px;
  background-color: #000;
  transform: rotate(90deg);
}
.grave:after {
  content: "";
  position: absolute;
  top: 0px;
  right: -9px;
  width: 0;
  height: 0;
  border-right: 15px solid transparent;
  border-top: 100px solid #000;
  transform: rotate(0deg);
}
.grave--mini {
  left: 100px;
  width: 5px;
  height: 65px;
  animation: grave 2s linear 3s infinite;
}
.grave--mini:before {
  top: 1px;
  right: -3px;
  width: 7px;
  height: 26px;
  transform: rotate(90deg);
}
.grave--mini:after {
  top: 0px;
  right: -9px;
  width: 0;
  height: 0;
  border-right: 10px solid transparent;
  border-top: 38px solid #000;
  transform: rotate(-2deg);
}
.grave:nth-of-type(1) {
  bottom: 0;
  left: 190px;
  transform: rotate(10deg);
}
.grave:nth-of-type(2) {
  bottom: -13px;
  left: 150px;
  transform: rotate(3deg);
  animation: grave 3.5s linear 3s infinite;
}
.grave:nth-of-type(3) {
  bottom: -4px;
  left: 118px;
}

.ground-wrapper {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 15px;
  background-color: #000;
  overflow: hidden;
}

.bat {
  position: absolute;
  width: 10px;
  height: 17px;
  border-radius: 40%;
  background-color: #000;
  animation: bat 5s linear infinite alternate;
}
.bat:before {
  content: "";
  position: absolute;
  width: 4px;
  height: 10px;
  top: -4px;
  right: 0;
  border-radius: 40%;
  background-color: #000;
}
.bat:after {
  content: "";
  position: absolute;
  width: 4px;
  height: 10px;
  top: -4px;
  left: 0;
  border-radius: 40%;
  background-color: #000;
}
.bat__right-wing {
  position: absolute;
  top: -7px;
  right: -30px;
  width: 0;
  height: 0;
  border-left: 17px solid transparent;
  border-right: 17px solid transparent;
  border-bottom: 14px solid #000;
  transform: rotate(-3deg);
  border-radius: 50px;
  animation: bat-right-wing 2s linear infinite alternate;
}
.bat__right-wing:before {
  content: "";
  position: absolute;
  top: 9px;
  right: -4px;
  width: 0;
  height: 0;
  border-left: 8px solid transparent;
  border-right: 8px solid transparent;
  border-top: 10px solid #000;
  transform: rotate(19deg);
  border-radius: 50px;
}
.bat__right-wing:after {
  content: "";
  position: absolute;
  top: 9px;
  right: -15px;
  width: 0;
  height: 0;
  border-left: 8px solid transparent;
  border-right: 12px solid transparent;
  border-top: 10px solid #000;
  transform: rotate(19deg);
  border-radius: 50px;
}
.bat__left-wing {
  position: absolute;
  top: -7px;
  left: -30px;
  width: 0;
  height: 0;
  border-left: 17px solid transparent;
  border-right: 17px solid transparent;
  border-bottom: 14px solid #000;
  transform: rotate(-3deg);
  border-radius: 50px;
  animation: bat-left-wing 2s linear infinite alternate;
}
.bat__left-wing:before {
  content: "";
  position: absolute;
  top: 9px;
  left: -4px;
  width: 0;
  height: 0;
  border-left: 8px solid transparent;
  border-right: 8px solid transparent;
  border-top: 10px solid #000;
  transform: rotate(-19deg);
  border-radius: 50px;
}
.bat__left-wing:after {
  content: "";
  position: absolute;
  top: 9px;
  left: -15px;
  width: 0;
  height: 0;
  border-left: 12px solid transparent;
  border-right: 8px solid transparent;
  border-top: 10px solid #000;
  transform: rotate(-19deg);
  border-radius: 50px;
}
.bat--left {
  top: 100px;
  left: 100px;
}
.bat--right {
  top: 150px;
  right: 100px;
}

.button-container {
  width: 100%;
}
.button-container p {
  margin-top: 20px;
  text-align: center;
  font-size: 20px;
}

.button {
  position: relative;
  display: block;
  width: 150px;
  height: 50px;
  margin: auto;
  text-decoration: none;
  color: #fff;
  text-align: center;
  font-size: 35px;
  padding-top: 15px;
}
.button:hover {
  color: #000;
  transition: color 0.5s ease-out;
  -o-transition: color 0.5s ease-out;
  -moz-transition: color 0.5s ease-out;
  -webkit-transition: color 0.5s ease-out;
  -ms-transition: color 0.5s ease-out;
}

.ghost {
  position: absolute;
  width: 40px;
  height: 45px;
  left: -50px;
  background-color: #000;
  border-top-left-radius: 40%;
  border-top-right-radius: 40%;
  border-bottom-right-radius: 40%;
  border-bottom-left-radius: 10%;
  animation: ghost 20s linear infinite;
}
.ghost__hand {
  position: absolute;
  width: 20px;
  height: 1px;
  left: 27px;
  top: 27px;
  height: 6px;
  background-color: #000;
  border-radius: 20px;
  transform: rotate(-29deg);
}
.ghost__hand:before {
  content: "";
  position: absolute;
  width: 8px;
  left: 16px;
  top: 3px;
  height: 6px;
  background-color: #000;
  border-bottom-right-radius: 5px;
  border-top-right-radius: 5px;
  transform: rotate(49deg);
}
.ghost__tail {
  border-left: 9px solid transparent;
  border-right: 5px solid transparent;
  border-bottom: 7px solid #000;
  border-radius: 30%;
  position: absolute;
  left: -8px;
  top: 34px;
  transform: rotate(42deg);
}
.ghost__face {
  position: absolute;
  top: 10px;
  right: 10px;
  width: 5px;
  height: 5px;
  background-color: #F6E833;
  border-radius: 50%;
}
.ghost__face:after {
  content: "";
  position: absolute;
  top: 10px;
  right: -6px;
  width: 4px;
  height: 1px;
  background-color: #F6E833;
}

@keyframes ghost {
  0% {
    transform: translateX(0) rotateY(0);
  }
  45% {
    transform: translateX(190px) translateY(20px) rotateY(0);
  }
  50% {
    transform: translateX(200px) translateY(10px) rotateY(180deg);
  }
  95% {
    transform: translateX(10px) translateY(10px) rotateY(180deg);
  }
  100% {
    transform: translateX(0) rotateY(0);
  }
}
@keyframes grave {
  0% {
    transform: rotateZ(0);
  }
  25% {
    transform: rotateZ(10deg);
  }
  50% {
    transform: rotateZ(0);
  }
  100% {
    transform: rotateZ(0);
  }
}
@keyframes window {
  0% {
    background-color: #F6E833;
  }
  100% {
    background-color: #F0DB90;
  }
}
@keyframes bat {
  0% {
    transform: translateY(0);
  }
  100% {
    transform: translateY(-30px);
  }
}
@keyframes bat-right-wing {
  0% {
    transform: rotateZ(0);
  }
  100% {
    transform: rotateZ(-20deg);
  }
}
@keyframes bat-left-wing {
  0% {
    transform: rotateZ(0);
  }
  100% {
    transform: rotateZ(20deg);
  }
}

</style>
<div class="main-wrapper">
  <div class="error">
    <p class="error__num">4</p>
    <div class="error__moon"></div>
    <p class="error__num">4</p>
  </div>
  <div class="house">
    <div class="house__right">
      <div class="house__window"></div>
    </div>
    <div class="house__center">
      <div class="house__window"></div>
      <div class="house__window"></div>
    </div>
    <div class="house__left">
      <div class="house__window"></div>
      <div class="house__window"></div>
    </div>
    <div class="house__mini">
      <div class="house__window"></div>
      <div class="bridge"></div>
    </div>
    <div class="house__bottom">
      <div class="house__window"></div>
    </div>
  </div>
  <div class="graves">
    <div class="grave"></div>
    <div class="grave grave--mini"></div>
    <div class="grave grave--mini"></div>
  </div>
  <div class="bat bat--left">
    <div class="bat__right-wing"></div>
    <div class="bat__left-wing"></div>
  </div>
  <div class="bat bat--right">
    <div class="bat__right-wing"></div>
    <div class="bat__left-wing"></div>
  </div>
  <div class="ground-wrapper"></div>
  <div class="button-container">
    <p>Sorry! That page dosen't seem to exist</p><a class="button button--back" href="#">Go Back
      <div class="ghost">
        <div class="ghost__hand"></div>
        <div class="ghost__face"></div>
        <div class="ghost__tail"></div>
      </div></a>
  </div>
</div>