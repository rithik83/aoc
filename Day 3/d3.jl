contents = readlines("Day 3/input.txt")
# total = 0
regex = r"mul\([0-9]+,[0-9]+\)"
do_regex = r"do\(\)"
dont_regex = r"don't\(\)"

mul_totals = []
mul_indices = []
do_indices = []
dont_indices = []
total = 0

for line in contents
    matches = eachmatch(regex, line)
    for match in matches
        str = split(match.match[5:length(match.match)-1], ",")
        product = parse(Int, str[1]) * parse(Int, str[2])
        push!(mul_totals, product)
        push!(mul_indices, match.offset)
    end

    do_matches = eachmatch(do_regex, line)
    for match in do_matches
        push!(do_indices, match.offset)
    end

    dont_matches = eachmatch(dont_regex, line)
    for match in dont_matches
        push!(dont_indices, match.offset)
    end
end

curr = 'y'
do_ptr = 1
dont_ptr = 1
mul_ptr = 1

for i in 1:19225
    if do_ptr <= length(do_indices) && do_indices[do_ptr] == i
        curr = 'y'
        do_ptr += 1
    elseif dont_ptr <= length(dont_indices) && dont_indices[dont_ptr] == i
        curr = 'n'
        dont_ptr += 1
    elseif mul_indices[mul_ptr] == i
        if curr == 'y'
            total += mul_totals[mul_ptr]
        end
        mul_ptr += 1
    end
end

println("mul totals: ", mul_totals)
println("mul_indices: ", mul_indices)
println("total: ", total)