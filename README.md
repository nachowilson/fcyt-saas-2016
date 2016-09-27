# fcyt-saas-2016
#Repository for the saas engineering homeworks
We are using [Cloud9](http://c9.io/) as a main development environment for doing the homeworks and the final project.
However, you are free to use any other technologies, operating systems or any software needed to complete the homeworks.
##Setting up Cloud9:
1. Create and login to a free account on Cloud9 and select "Create a New Workspace". (Pro tip: if you don't already have a free account on GitHub, create that first, since you'll need one anyway, and you can then use your existing GitHub account credentials to login to Cloud9.)
2. Click "Create a new workspace" and use the following options for your new workspace:
  * Workspace name and Description - anything you like
  * Hosted Workspace (not Remote SSH workspace)
  * Private or Public: your choice
  * Clone from Git or Mercurial: leave blank
  * Choose a template: select Blank Workspace (do not select "Rails" or "Ruby on Rails tutorial" or anything like that)
  *Then click Create.

3. Finally, setup a public ssh keypair in your Cloud9 instance and add those keys to GitHub. 
**Note:** if the "clip" command to copy the SSH key to your clipboard in Step 4 of the GitHub instructions fails for you, then do this:
  * ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
  * cat ~/.ssh/id_rsa.pub
  * This displays the contents of the file on the terminal. You can then select and copy the entire content starting from "ssh-rsa" including the key up to "your_email@example.com".

4. Fork the following repository: [fcyt-saas-2016](http://github.com/jchiavaro/fcyt-saas-2016)
  * Createa a fork from the repository mentioned above and clone it.
  * You will be pushing changes to that repository for the homeworks

## Setting up CodeAnywere

#Homework 1:

##1. String manipulation.
* a) Define a validate_email? method that takes an string as a parameter representing an email and return a boolean that represents if the parameter is a valid email. You should use a regular expression to validate the string since it will reduce the amount of work needed for the validation. Note: Run the rspec test and make sure that the test passes before submitting the code: $ rspec -e '#validate_email?' spec/part1_spec.rb
* b) Implement a method is_palindrome? That returns true if a word or a phrase is palindrome: https://en.wikipedia.org/wiki/Palindrome
	Note: Run the rspec test and make sure that the test passes before 
submitting the code: $ rspec -e '#is_palindrome?' spec/part1_spec.rb

##2. Arrays and Hashes.
* a)Define a method max_sum_of_2 that takes 2 integer arrays as parameters, calculates the sum of all the elements of each array and returns the maximum number. If the maximum are the same, print a message saying “sums are equal” and return 0. For example: max_sum_of_2([2, 3, 4], [1, 2, 3]) should return 9 and max_sum_of_2([2, 6, 4], [3, 9]) should print the message and return 0.
Note: Run the rspec test and make sure that the test passes before 
submitting the code: $ rspec -e '#max_sum_of_2' spec/part2_spec.rb
* b)Define a method word_frequency that takes an array of words as a parameter and return the most frequently word (The word with the largest amount of occurrences in the array). If 2 or more words have the max frequency, return any of them.
Note: Run the rspec test and make sure that the test passes before 
submitting the code: $ rspec -e '#word_frequency' spec/part2_spec.rb

##3. Object Oriented Programming
Define a class FileAnalizer that has the following: 
* Private attributes:
  * file_name: An string containing the file name.
  * total_lines: An integer

* Methods: 
  * calculate_total_lines => calculates the total number of lines of the file and assigns it to the total_lines varible.
  * max_word_line => Returns a Hash that has one entry per line. Each element of the hash has a word as a key and the frequency as a number (You can reuse the method implemented before)
