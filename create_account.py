import requests
import random


def create_account():
  """Creates a new Temporary Gmail Account."""
  username = random.randint(100000, 999999)
  password = random.randint(100000, 999999)
  email = username + "@gmail.com"

  data = {
    "username": username,
    "password": password,
    "email": email
  }

  response = requests.post("https://create_account.py", data=data)

  if response.status_code == 200:
    return {
      "username": username,
      "password": password,
      "email": email
    }
  else:
    return None


if __name__ == "__main__":
  account = create_account()

  if account is not None:
    print("Username:", account["username"])
    print("Password:", account["password"])
    print("Email:", account["email"])
  else:
    print("Error creating account")
