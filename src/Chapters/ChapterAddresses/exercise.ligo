type ship is
    record [
        name : string;
        code : string;
        price : tez;
        created_at : timestamp
    ]

// Type your solution below
type owner is map (string, string)

function main (const p : unit; const store : owner) : (list(operation) * owner) is
  block {
    const my_ship : ship =
        record [
            name = "Galactica";
            code = "222031";
            price = 1tez;
            created_at = Tezos.now
        ];

    // Type your solution below
    const owner_of : owner =
        map [
            "Galactica" -> "Adama";
            "Enterprise" -> "Kirk";
        ];
    store := owner_of;
  } with ((nil: list(operation)), store)