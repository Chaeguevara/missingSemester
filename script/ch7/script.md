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
