# Ruby on Rails Practical Interview Task

Ruby on Rails API for mobile recharge and transactions.

## Requirements

* Ruby 3.4.11
* Rails 8.1.4
* SQLite3

## Setup

```bash
bundle install
rails db:migrate
rails server
```

Server:

```text
http://localhost:3000
```

## API Endpoints

### Create Recharge

**POST** `/api/recharges`

Request:

```json
{
  "recharge": {
    "mobile_no": "9876543210",
    "operator_name": "Jio",
    "state": "Madhya Pradesh",
    "amount": 299
  }
}
```

Response:

```json
{
  "recharge": {
    "id": 1,
    "mobile_no": "9876543210",
    "operator_name": "Jio",
    "state": "Madhya Pradesh",
    "amount": "299.0",
    "status": "success"
  },
  "transaction": {
    "id": 1,
    "transaction_id": "generated-unique-id",
    "amount": "299.0",
    "status": "success"
  }
}
```

### Get Transactions

**GET** `/api/transactions`

Response:

```json
[
  {
    "id": 1,
    "transaction_id": "generated-unique-id",
    "amount": "299.0",
    "status": "success",
    "created_at": "2026-09-29T10:00:00.000Z",
    "recharge": {
      "id": 1,
      "mobile_no": "9876543210",
      "operator_name": "Jio",
      "state": "Madhya Pradesh",
      "amount": "299.0",
      "status": "success"
    }
  }
]
```

## Validation

* Required fields
* Amount must be greater than 0
* Operator: Jio, Airtel, Vi
* Transaction ID is unique

## Database

SQLite3
