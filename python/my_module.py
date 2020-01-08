# 파일-모듈, 디렉토리-패키지
# 파일명: my_module.py , 모듈명: my_module

def plus(num1, num2):
    return num1+num2

def minus(num1, num2):
    return num1-num2

def multipy(num1, num2):
    return num1*num2

def divide(num1, num2):
    return num1/num2

# main 모듈일때 모듈의 이름(__name__ 변수)을 "__main__" 으로 설정
# sub 모듈일때(import 되서 실행될때) 모듈의 이름을 "모듈명" 으로 설정.
print(__name__)
if __name__ == "__main__":
    print(multipy(10,20))
    print(divide(10,20))
    print(minus(10,20))






