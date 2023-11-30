[![Netlify Status](https://api.netlify.com/api/v1/badges/9ec5eebb-2205-4017-8546-59e69a64ece8/deploy-status)](https://app.netlify.com/sites/red-steps/deploys)
<!-- ![이미지를 찾을 수 없습니다](https://red-steps.netlify.app/sky1.jpg) -->
![이미지를 찾을 수 없습니다](https://red-steps.netlify.app/sky2.jpg)
<!-- ![이미지를 찾을 수 없습니다](https://red-steps.netlify.app/sky3.jpg) -->
<!-- ![이미지를 찾을 수 없습니다](https://red-steps.netlify.app/sky4.jpg) -->
<!-- ![이미지를 찾을 수 없습니다](https://red-steps.netlify.app/sky5.jpg) -->
<!-- ![이미지를 찾을 수 없습니다](https://red-steps.netlify.app/sky6.jpg) -->
[![Netlify Status](https://api.netlify.com/api/v1/badges/9ec5eebb-2205-4017-8546-59e69a64ece8/deploy-status)](https://app.netlify.com/sites/red-steps/deploys)
# 서비스 묘사(THIS SERVICE)
- 특정위치의 파일을 1분마다 백업하는 파이썬 프로그램(IT CAN BACK UP CERTAIN FILE LOCATED PER 1 MINUTES)


# 개발환경(IT WORKS IN ENVIRONMENT BELOW)
- WINDOWS 10 PRO
- PYTHON3.10 
- 반디집(FILE COMPRESSION KOREAN PROGRAM)


# 개발규칙(DEVELOPMENT RULE)
- OS 변수를 고빈도로 활용해볼 것
- 상대경로를 고빈도로 활용해볼 것


# 개발완료사항(DEVELOPMENT DONE)
- 2023 11 26 21:03:49 프로그램의 프로젝트 구조 생성
- 2023 11 26 21:03:49 과도하게 많아 보이는 백업파일 자동 정리 기능     // 500 seconds 이전에 생성된 백업파일을 .old 디렉토리로 이동하도록함
- 2023 11 26 21:42:02 argument 로 파일주소를 받아서 백업할 수 있도록 기능
- 2023 11 28 22:49:21 argument 가 없이 실행 시 파이썬 코드 내 파일주소 백업 기능 
- 2023 11 28 23:12:20 프로젝트명 을 back_up 에서 helper-from-X-to-back_up 로 변경
- 2023 11 29 10:45:11 프로젝트 종료 잠정 
 

 # 사용예시(example)
helper.bat 파일을 참고하세요 (refer to file "helper.bat")
- call ".\.venv\Scripts\activate.bat"
- python helper.py "c:\blah\blah\blah\foo.txt"