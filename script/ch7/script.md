# Add user

useradd -D \
group=100 \
HOME=/home \
INACTIVE=-1 \
EXPIRE= \
SHELL=/bin/bash \
SKEL=/etc/skel \
CREATE_MAIL_SPOOL=yes \
^-- Specify default useradd setting

## Add a user named "test"
useradd -m test

## Removing a user
userdel -r test

## Change a user
```bash
usermode -- change user account field 
passwd -- change password
chpasswd -- read and update password
change -- change expiration date
chfn -- change comment
chsh -- change default shell
```

### usermode
```shell
-e : change expiration date
-g : change default login group
-l : change Login named
-L : Lock
-p : change password
-U : unlock

```
-L is handy. Becaue without deleting account, just lock and keep data.

### passwd and chpasswd
quick change -> passwd
```shell
# passwd text

```
passwd w/o id -> change your own passwd

`-e` will let user change pwd on next login

mass password change -> `chpasswd`
by reading a text file something like `username:password` then change
```shell
# chpasswd < user.txt
```

### chsh,chfn,and change
특정 계정 변경시 사용
ex) default login shell 바꾸기
```bash
# chsh -s /bin/csh test
--> csh로 shell
```

`finger`를 이용, 유저정보 조회 가능
```bash
finer rich
Login: rich    Name: Rich Blum
Directory...
```




## Group 사용
배포 버전마다 차이 있음. 하나의 그룹만 생성되는 버전도 있으니 주의.

### /etc/group 파일
그룹 정보 담고있음 4가지 field\
그룹 이름 | 그룹 패스워드 | GID | 그룹에 포함된 유저 정보\
  유저 이름이 나타나지 않는 경우도 있음. 안나타난다고 없는건 아님

### 새 그룹 만들기
  ```bash
  /usr/sbin/groupadd shared
  ```
  그룹 생성시 유저 없음 --> `usermod` 를 이용해서 새 유저 넣음

  ```bash
  /usr/sbin/usermod -G shared rich
  /usr/sbin/usermod -G shared test
  ```
  이제 shared 에 유저 2명임

## 파일 권한 설정
  ```
  -rw-rw-r--
  drwxrwxr-x
  ```
맨 앞 심볼
- \- file
- d 디렉토리
- l 링크
- c character device(?)
- b block device(?)
- p named pipe
- s network socket 

그다음 각각 단어
- r : read
- w : write
- x : execute

그리고 각각 3개씩
- 소유자의 권한
- 그룹의 권한
- 기타 나머지 아무나

### 권한 확인
umask를 통해 binary값으로 볼 수 있음 \
0 --> 없음\
7 --> rwx


      
   
