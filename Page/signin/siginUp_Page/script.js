// 인증번호 입력란을 보이게 설정
function showVerificationSection() {
  const verificationSection = document.getElementById("verification-section");
  if (verificationSection.classList.contains("hidden")) {
      verificationSection.classList.remove("hidden");
  }
}

// 인증번호 확인 버튼 동작
function verifyCode() {
  const verificationCode = document.getElementById("verificationCode").value;
  if (verificationCode.trim() === "") {
      alert("인증번호를 입력하세요.");
  } else {
      alert("인증번호가 확인되었습니다.");
  }
}
