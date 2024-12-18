contents = readlines("Day 4/input.txt")

xmases = 0
l = 140

# part 1
# for i in 1:l
#     for j in 1:l
#         if contents[i][j] == 'X'
#             curr_row = i
#             curr_col = j
            
#             # check all 8 directions

#             # N
#             curr = '-'
#             mov_row = curr_row
#             mov_col = curr_col
#             while mov_row > 0
#                 if curr == '-' && contents[mov_row][mov_col] == 'X'
#                     curr = 'X'
#                 elseif curr == 'X' && contents[mov_row][mov_col] == 'M'
#                     curr = 'M'
#                 elseif curr == 'M' && contents[mov_row][mov_col] == 'A'
#                     curr = 'A'
#                 elseif curr == 'A' && contents[mov_row][mov_col] == 'S'
#                     curr = 'S'
#                     break
#                 else
#                     break
#                 end
#                 mov_row -= 1
#             end
#             if curr == 'S'
#                 println("curr row: ", curr_row)
#                 println("curr col: ", curr_col)
#                 println("dir: N")
#                 println()
#                 xmases += 1
#             end

#             # NE
#             curr = '-'
#             mov_row = curr_row
#             mov_col = curr_col
#             while mov_col <= l && mov_row > 0
#                 if curr == '-' && contents[mov_row][mov_col] == 'X'
#                     curr = 'X'
#                 elseif curr == 'X' && contents[mov_row][mov_col] == 'M'
#                     curr = 'M'
#                 elseif curr == 'M' && contents[mov_row][mov_col] == 'A'
#                     curr = 'A'
#                 elseif curr == 'A' && contents[mov_row][mov_col] == 'S'
#                     curr = 'S'
#                     break
#                 else
#                     break
#                 end
#                 mov_row -= 1
#                 mov_col += 1
#             end
#             if curr == 'S'
#                 println("curr row: ", curr_row)
#                 println("curr col: ", curr_col)
#                 println("dir: NE")
#                 println()
#                 xmases += 1
#             end

#             # E
#             curr = '-'
#             mov_row = curr_row
#             mov_col = curr_col
#             while mov_col <= l
#                 if curr == '-' && contents[mov_row][mov_col] == 'X'
#                     curr = 'X'
#                 elseif curr == 'X' && contents[mov_row][mov_col] == 'M'
#                     curr = 'M'
#                 elseif curr == 'M' && contents[mov_row][mov_col] == 'A'
#                     curr = 'A'
#                 elseif curr == 'A' && contents[mov_row][mov_col] == 'S'
#                     curr = 'S'
#                     break
#                 else
#                     if curr_row == 1 && curr_col == 5
#                         println("supposed to have ended here")
#                     end
#                     break
#                 end
#                 mov_col += 1
#             end
#             if curr == 'S'
#                 println("curr row: ", curr_row)
#                 println("curr col: ", curr_col)
#                 println("dir: E")
#                 println()
#                 xmases += 1
#             end

#             # SE
#             curr = '-'
#             mov_row = curr_row
#             mov_col = curr_col
#             while mov_col <= l && mov_row <= l
#                 if curr == '-' && contents[mov_row][mov_col] == 'X'
#                     curr = 'X'
#                 elseif curr == 'X' && contents[mov_row][mov_col] == 'M'
#                     curr = 'M'
#                 elseif curr == 'M' && contents[mov_row][mov_col] == 'A'
#                     curr = 'A'
#                 elseif curr == 'A' && contents[mov_row][mov_col] == 'S'
#                     curr = 'S'
#                     break
#                 else
#                     break
#                 end
#                 mov_row += 1
#                 mov_col += 1
#             end
#             if curr == 'S'
#                 println("curr row: ", curr_row)
#                 println("curr col: ", curr_col)
#                 println("dir: SE")
#                 println()
#                 xmases += 1
#             end

#             #S
#             curr = '-'
#             mov_row = curr_row
#             mov_col = curr_col
#             while mov_row <= l
#                 if curr == '-' && contents[mov_row][mov_col] == 'X'
#                     curr = 'X'
#                 elseif curr == 'X' && contents[mov_row][mov_col] == 'M'
#                     curr = 'M'
#                 elseif curr == 'M' && contents[mov_row][mov_col] == 'A'
#                     curr = 'A'
#                 elseif curr == 'A' && contents[mov_row][mov_col] == 'S'
#                     curr = 'S'
#                     break
#                 else
#                     break
#                 end
#                 mov_row += 1
#             end
#             if curr == 'S'
#                 println("curr row: ", curr_row)
#                 println("curr col: ", curr_col)
#                 println("dir: S")
#                 println()
#                 xmases += 1
#             end

#             # SW
#             curr = '-'
#             mov_row = curr_row
#             mov_col = curr_col
#             while mov_col > 0 && mov_row <= l
#                 if curr == '-' && contents[mov_row][mov_col] == 'X'
#                     curr = 'X'
#                 elseif curr == 'X' && contents[mov_row][mov_col] == 'M'
#                     curr = 'M'
#                 elseif curr == 'M' && contents[mov_row][mov_col] == 'A'
#                     curr = 'A'
#                 elseif curr == 'A' && contents[mov_row][mov_col] == 'S'
#                     curr = 'S'
#                     break
#                 else
#                     break
#                 end
#                 mov_row += 1
#                 mov_col -= 1
#             end
#             if curr == 'S'
#                 println("curr row: ", curr_row)
#                 println("curr col: ", curr_col)
#                 println("dir: SW")
#                 println()
#                 xmases += 1
#             end

#             # W
#             curr = '-'
#             mov_row = curr_row
#             mov_col = curr_col
#             while mov_col > 0
#                 if curr == '-' && contents[mov_row][mov_col] == 'X'
#                     curr = 'X'
#                 elseif curr == 'X' && contents[mov_row][mov_col] == 'M'
#                     curr = 'M'
#                 elseif curr == 'M' && contents[mov_row][mov_col] == 'A'
#                     curr = 'A'
#                 elseif curr == 'A' && contents[mov_row][mov_col] == 'S'
#                     curr = 'S'
#                     break
#                 else
#                     break
#                 end
#                 mov_col -= 1
#             end
#             if curr == 'S'
#                 println("curr row: ", curr_row)
#                 println("curr col: ", curr_col)
#                 println("dir: W")
#                 println()
#                 xmases += 1
#             end

#             #NW

#             curr = '-'
#             mov_row = curr_row
#             mov_col = curr_col
#             while mov_col > 0 && mov_row > 0
#                 if curr == '-' && contents[mov_row][mov_col] == 'X'
#                     curr = 'X'
#                 elseif curr == 'X' && contents[mov_row][mov_col] == 'M'
#                     curr = 'M'
#                 elseif curr == 'M' && contents[mov_row][mov_col] == 'A'
#                     curr = 'A'
#                 elseif curr == 'A' && contents[mov_row][mov_col] == 'S'
#                     curr = 'S'
#                     break
#                 else
#                     break
#                 end
#                 mov_row -= 1
#                 mov_col -= 1
#             end
#             if curr == 'S'
#                 println("curr row: ", curr_row)
#                 println("curr col: ", curr_col)
#                 println("dir: NW")
#                 println()
#                 xmases += 1
#             end
#         end
#     end
# end

for i in 2:l-1
    for j in 2:l-1
        if contents[i][j] == 'A'
            tl = contents[i-1][j-1]
            tr = contents[i-1][j+1]
            bl = contents[i+1][j-1]
            br = contents[i+1][j+1]

            if (tl == 'M' && br == 'S' && tr == 'M' && bl == 'S') || (tl == 'M' && br == 'S' && tr == 'S' && bl == 'M') || (tl == 'S' && br == 'M' && tr == 'M' && bl == 'S') || (tl == 'S' && br == 'M' && tr == 'S' && bl == 'M')
                # increment 1
                xmases += 1
            end
        end
    end
end

xmases