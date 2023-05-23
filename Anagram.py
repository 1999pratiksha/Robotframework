#Enter input strings
str1 = str(input ("Enter string 1: "))
str2 = str(input ("Enter string 2: "))

#Convert into lowercase and sort
str1 = sorted(str1.lower())
str2 = sorted(str2.lower())

print("String 1 after sorting: ", str1)
print("String 2 after sorting: ", str2)

#Define a function to match strings
def isAnagram():
    if (str1 == str2) :
        return "The strings are anagrams."
    else:
        return "The strings are not anagrams."

print(isAnagram())