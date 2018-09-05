#!/usr/local/bin/python3
import secrets, string

length = 16
chars = string.ascii_letters + string.digits + '!@#$%^&*()'

print(''.join(secrets.choice(chars) for i in range(length)))
