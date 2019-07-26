# Gajija_board

## Usage

> **Note:** PHP 7.0 이상

------------------
Nginx 서버인 경우 (nginx.conf 설정)
------------------
client_max_body_size 100M;

-----------------
php.ini 설정
------------------
max_input_vars = 5120

memory_limit = 256M

post_max_size 100M

upload_max_filesize 8M

-----------------
my.cnf 설정 (DB : mysql or maria )
------------------
group_concat_max_len=10240


## 퍼미션설정 
 
1. html 캐쉬 디렉토리
 
   mkdir -R cache/dynamic

   mkdir -R cache/template
   ```sh   
   chmod -R 707 cache
   ```

2. XSS방어 관련 캐쉬 디렉토리
 
   사용안하면 성능저하가 생김(디렉토리 변경시 참조: http://htmlpurifier.org/download#toclink1)
   ```sh  
   chmod 707 app/lib/htmlpurifier/library/HTMLPurifier/DefinitionCache/Serializer
   ```

3. temp 디렉토리
   ```sh
   chmod 707 tmp/
   ```
4. 데이타 디렉토리
   ```sh
   chmod -R 707 datas/
   ```
5. html 디렉토리
   ```sh
   chmod -R 707 html/_attach/
   chmod -R 707 theme/template1/html/_attach/
   ```

## composer로 library 설치 (해당 폴더의 파일참조:  Readme) 

Windows 환경인 경우

Git Bash 사용을 위해 설치 : https://git-scm.com/downloads

설치후 아래 해당하는 폴더에 들어가서 오른쪽 마우스 클릭하여 "Git Bash Here" 를 선택함.

그런 후 아래 내용을 참조하여 진행하세요.


php.ini (확장모듈 요구사항)
```sh
extension=php_fileinfo.dll
```
composer 명령어 사용을 위한 설치가이드 참조 : 

     https://getcomposer.org/
   
     https://www.lesstif.com/pages/viewpage.action?pageId=23757293
 
1. phpOffice (참조 : https://github.com/PHPOffice/PhpSpreadsheet)

   설치경로:	app/lib/PhpOffice
   ```sh  
   composer require phpoffice/phpspreadsheet
   ```
2. facebook Api

   설치경로: app/lib/Api/facebook
   ```sh  
   composer require facebook/graph-sdk
   ```
3. google Api

   설치경로: app/lib/Api/google
   ```sh  
   composer require google/apiclient:^2.0
   ```
