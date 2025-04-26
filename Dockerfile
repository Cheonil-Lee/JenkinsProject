# 베이스 이미지로 가벼운 Python 이미지 사용
FROM python:3.9-slim

# 작업 디렉토리 설정
WORKDIR /app

# 현재 디렉토리의 모든 파일 복사
COPY . .

# 기본 커맨드 (예: 간단한 HTTP 서버 실행)
CMD ["python3", "-m", "http.server", "8000"]
