# Fakeshop API

In this project I created an API for a fake fitness webshop which returns 20 products in 3 different categories. 

**Link to deployed application**: https://fakegymshop-api.herokuapp.com/

## Usage

### Filters 

- Categories -> Endpoint:
  - Diet -> `/?category=diet`
  - Clothes -> `/?category=clothes`
  - Accessories -> `/?category=accessories`
- Quantity -> Endpoint:
  - Show -> `/?show=5` (Will show 5 randomly generated products)
- Combination
  - Show, Category -> `/?show=3&category=clothes` (Will show 3 randomly generated products from the clothes category)

## The Stack:

- PHP
- MySQL
- Deployed on Heroku
