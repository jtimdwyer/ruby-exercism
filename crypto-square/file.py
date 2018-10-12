def finder(n):
    r, c = 0, 0
    while r * c < n:
        c += 1
        r, c = c, r
    return min(r, c), max(r, c)