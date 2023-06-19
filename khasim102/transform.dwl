%dw 2.0
output application/json
fun flattenRecursion(arr: Array) = do {
 arr reduce ((item, acc = []) -> 
 item match {
 case x is Array -> acc ++ flattenRecursion(x)
 else -> acc << item
 }
 )
}
// Here I am Flatten a nested JSON Array using Recursion
---
flattenRecursion(payload)