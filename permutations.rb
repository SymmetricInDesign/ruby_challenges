
def permutations(arr)
    return [arr] if arr.length < 2
    perms = []
    arr.length.times do 
        subperms = permutations(arr.slice(1, arr.length-1)).map {|subperm| subperm.unshift(arr[0])}
        perms.concat(subperms)
        arr.rotate!
    end
    perms
end

p permutations([1,2])