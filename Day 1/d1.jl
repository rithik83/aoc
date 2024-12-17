contents = readlines("Day 1/input.txt")
larr = []
rarr = []
for line in contents
    l, r  = split(line, "  ")
    lnum = parse(Int, l)
    rnum = parse(Int, r)
    push!(larr, lnum)
    push!(rarr, rnum)
end

sort!(larr)
sort!(rarr)

println(length(Set(rarr)))

dict = Dict()

for num in rarr
    if get(dict, num, 0) == 0
        dict[num] = 1
    else
        dict[num] += 1
    end
end

ans = 0 

for num in larr
    ans += num * get(dict, num, 0)
end 

ans