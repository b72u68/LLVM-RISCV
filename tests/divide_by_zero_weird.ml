(*Result: Divide By Zero error unless you dont evaluate the else in the if*)
let x = 0 in
    let y = 3 in
        let z = 4 in
            if z>y then z*y else y/x
;;
