###Description
Finder should find 2 skipped numbers inside sorted array of natural numbers using Array#bsearch

###Usage
```
users = []
10000000.times do |i|
    user = User.new
    user.age = rand(100)
    user.gender = rand(1)
    user.amount = rand(1000000)
    user.index = rand(1000000)
    user.height = rand(300)
    users << user
end    
finder = Finder.new(users)
finder.search({age: (12..37), height: 267, amount(500000..10000000), gender: 1})
```
