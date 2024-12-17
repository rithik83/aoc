# terrible

contents = readlines("Day 2/input.txt")
safes = 0
unsafes = 0

for line in contents
    a = split(line, " ")
    inc = sign(parse(Int, a[2]) - parse(Int, a[1]))
    faults = 0
    for i in 2:length(a)
        if (parse(Int, a[i]) - parse(Int, a[i-1])) * inc < 1 || (parse(Int, a[i]) - parse(Int, a[i-1])) * inc > 3
            faults += 1
        end
    end

    if faults > 0
        safefound = false
        indices = [i for i in 1:length(a)]
        for index in indices
            newa = []
            for ind in 1:length(a)
                if ind == index
                    continue
                else
                    push!(newa, a[ind])
                end
            end

            newfaults = 0

            newinc = sign(parse(Int, newa[2]) - parse(Int, newa[1]))
            
            for i in 2:length(newa)
                if (parse(Int, newa[i]) - parse(Int, newa[i-1])) * newinc < 1 || (parse(Int, newa[i]) - parse(Int, newa[i-1])) * newinc > 3
                    newfaults += 1
                end
            end

            if newfaults == 0
                safefound = true
                break
            end
        end

        if safefound
            safes += 1
        else
            unsafes += 1
        end
    else
        safes += 1
    end
end

println("unsafes: ", unsafes)
println("safes: ", safes)