Data Modeling
postgres=# \c accounts
You are now connected to database "accounts" as user "postgres".
accounts=# \dt
            List of relations
 Schema |    Name     | Type  |  Owner
--------+-------------+-------+----------
 public | amazon      | table | postgres
 public | salesdata   | table | postgres
 public | supermarket | table | postgres
(3 rows)


accounts=# select * from amazon
accounts-# limit 20;
ERROR:  character with byte sequence 0xe2 0x82 0xb9 in encoding "UTF8" has no equivalent in encoding "WIN1252"
accounts=# select * from amazon;
ERROR:  character with byte sequence 0xe2 0x82 0xb9 in encoding "UTF8" has no equivalent in encoding "WIN1252"
accounts=# select * from supermarket;
 branch |   city    | gender | quantity |   payment
--------+-----------+--------+----------+-------------
 A      | Yangon    | Female |        7 | Ewallet
 C      | Naypyitaw | Female |        5 | Cash
 A      | Yangon    | Male   |        7 | Credit card
 A      | Yangon    | Male   |        8 | Ewallet
 A      | Yangon    | Male   |        7 | Ewallet
 C      | Naypyitaw | Male   |        7 | Ewallet
 A      | Yangon    | Female |        6 | Ewallet
 C      | Naypyitaw | Female |       10 | Ewallet
 A      | Yangon    | Female |        2 | Credit card
 B      | Mandalay  | Female |        3 | Credit card
 B      | Mandalay  | Female |        4 | Ewallet
 B      | Mandalay  | Male   |        4 | Cash
 A      | Yangon    | Female |        5 | Ewallet
 A      | Yangon    | Male   |       10 | Ewallet
 A      | Yangon    | Female |       10 | Cash
 B      | Mandalay  | Female |        6 | Cash
 A      | Yangon    | Female |        7 | Credit card
 A      | Yangon    | Male   |        6 | Credit card
 A      | Yangon    | Male   |        3 | Credit card
 B      | Mandalay  | Female |        2 | Ewallet
 C      | Naypyitaw | Male   |        5 | Ewallet
 B      | Mandalay  | Male   |        3 | Ewallet
 B      | Mandalay  | Male   |        2 | Credit card
 A      | Yangon    | Male   |        5 | Ewallet
 A      | Yangon    | Male   |        3 | Ewallet
 A      | Yangon    | Female |        8 | Credit card
 B      | Mandalay  | Male   |        1 | Cash
 A      | Yangon    | Female |        2 | Credit card
 B      | Mandalay  | Female |        5 | Cash
 A      | Yangon    | Male   |        9 | Cash
 B      | Mandalay  | Male   |        5 | Credit card
 B      | Mandalay  | Male   |        9 | Cash
 B      | Mandalay  | Male   |        8 | Cash
 A      | Yangon    | Male   |        2 | Credit card
 C      | Naypyitaw | Female |        4 | Ewallet
 C      | Naypyitaw | Female |        1 | Ewallet
 A      | Yangon    | Male   |        5 | Ewallet
 A      | Yangon    | Female |        9 | Ewallet
 C      | Naypyitaw | Female |        8 | Ewallet
 B      | Mandalay  | Male   |        8 | Cash
 B      | Mandalay  | Female |        1 | Ewallet
 C      | Naypyitaw | Male   |        2 | Cash
 B      | Mandalay  | Female |        6 | Cash
 C      | Naypyitaw | Female |        8 | Cash
 C      | Naypyitaw | Male   |        2 | Cash
 B      | Mandalay  | Female |        4 | Cash
 B      | Mandalay  | Male   |        9 | Credit card
 B      | Mandalay  | Female |        9 | Ewallet
 B      | Mandalay  | Male   |        6 | Credit card
 C      | Naypyitaw | Female |       10 | Ewallet
 C      | Naypyitaw | Male   |        7 | Cash
 A      | Yangon    | Female |        5 | Cash
 B      | Mandalay  | Female |        4 | Ewallet
 C      | Naypyitaw | Male   |        1 | Credit card
 B      | Mandalay  | Male   |        2 | Ewallet
 C      | Naypyitaw | Female |        8 | Cash
 A      | Yangon    | Male   |        2 | Cash
 A      | Yangon    | Male   |        8 | Ewallet
 A      | Yangon    | Female |       10 | Cash
 C      | Naypyitaw | Male   |        6 | Cash
 C      | Naypyitaw | Female |        3 | Credit card
 C      | Naypyitaw | Male   |        6 | Ewallet
 B      | Mandalay  | Female |        9 | Ewallet
 A      | Yangon    | Male   |       10 | Credit card
 B      | Mandalay  | Male   |        4 | Cash
 A      | Yangon    | Male   |       10 | Cash
 C      | Naypyitaw | Female |        2 | Ewallet
 B      | Mandalay  | Female |        6 | Ewallet
 A      | Yangon    | Male   |       10 | Cash
 A      | Yangon    | Female |        1 | Cash
 C      | Naypyitaw | Male   |       10 | Credit card
^CCancel request sent
accounts=# /dt
accounts-# \dt
            List of relations
 Schema |    Name     | Type  |  Owner
--------+-------------+-------+----------
 public | amazon      | table | postgres
 public | salesdata   | table | postgres
 public | supermarket | table | postgres
(3 rows)


accounts-# select * from salesdata;
ERROR:  syntax error at or near "/"
LINE 1: /dt
        ^
accounts=# select * from salesdata;
 order_id |          product           |              purchase_address              | quantity_ordered | price_each
----------+----------------------------+--------------------------------------------+------------------+------------
   141234 | iPhone                     | 944 Walnut St, Boston, MA 02215            |                1 | 700.0
   141235 | Lightning Charging Cable   | 185 Maple St, Portland, OR 97035           |                1 | 14.95
   141236 | Wired Headphones           | 538 Adams St, San Francisco, CA 94016      |                2 | 11.99
   141237 | 27in FHD Monitor           | 738 10th St, Los Angeles, CA 90001         |                1 | 149.99
   141238 | Wired Headphones           | 387 10th St, Austin, TX 73301              |                1 | 11.99
   141239 | AAA Batteries (4-pack)     | 775 Willow St, San Francisco, CA 94016     |                1 | 2.99
   141240 | 27in 4K Gaming Monitor     | 979 Park St, Los Angeles, CA 90001         |                1 | 389.99
   141241 | USB-C Charging Cable       | 181 6th St, San Francisco, CA 94016        |                1 | 11.95
   141242 | Bose SoundSport Headphones | 867 Willow St, Los Angeles, CA 90001       |                1 | 99.99
   141243 | Apple Airpods Headphones   | 657 Johnson St, San Francisco, CA 94016    |                1 | 150.0
   141244 | Apple Airpods Headphones   | 492 Walnut St, San Francisco, CA 94016     |                1 | 150.0
   141245 | Macbook Pro Laptop         | 322 6th St, San Francisco, CA 94016        |                1 | 1700.0
   141246 | AAA Batteries (4-pack)     | 618 7th St, Los Angeles, CA 90001          |                3 | 2.99
   141247 | 27in FHD Monitor           | 512 Wilson St, San Francisco, CA 94016     |                1 | 149.99
   141248 | Flatscreen TV              | 363 Spruce St, Austin, TX 73301            |                1 | 300.0
   141249 | 27in FHD Monitor           | 440 Cedar St, Portland, OR 97035           |                1 | 149.99
   141250 | Vareebadd Phone            | 471 Center St, Los Angeles, CA 90001       |                1 | 400.0
   141251 | Apple Airpods Headphones   | 414 Walnut St, Boston, MA 02215            |                1 | 150.0
   141252 | USB-C Charging Cable       | 220 9th St, Los Angeles, CA 90001          |                1 | 11.95
   141253 | AA Batteries (4-pack)      | 385 11th St, Atlanta, GA 30301             |                1 | 3.84
   141254 | AAA Batteries (4-pack)     | 238 Sunset St, Seattle, WA 98101           |                1 | 2.99
   141255 | USB-C Charging Cable       | 764 11th St, Los Angeles, CA 90001         |                1 | 11.95
   141256 | Google Phone               | 675 Washington St, Portland, OR 97035      |                1 | 600.0
   141257 | Apple Airpods Headphones   | 338 Highland St, San Francisco, CA 94016   |                1 | 150.0
   141258 | AA Batteries (4-pack)      | 820 1st St, San Francisco, CA 94016        |                1 | 3.84
   141259 | AAA Batteries (4-pack)     | 920 Adams St, San Francisco, CA 94016      |                2 | 2.99
   141260 | AAA Batteries (4-pack)     | 293 Hill St, San Francisco, CA 94016       |                1 | 2.99
   141261 | USB-C Charging Cable       | 840 Lincoln St, Atlanta, GA 30301          |                1 | 11.95
   141262 | AAA Batteries (4-pack)     | 291 Lincoln St, San Francisco, CA 94016    |                1 | 2.99
   141263 | Bose SoundSport Headphones | 640 Spruce St, Boston, MA 02215            |                1 | 99.99
   141264 | Apple Airpods Headphones   | 937 Highland St, New York City, NY 10001   |                1 | 150.0
   141265 | Apple Airpods Headphones   | 853 Ridge St, Boston, MA 02215             |                1 | 150.0
   141266 | 27in 4K Gaming Monitor     | 834 4th St, Dallas, TX 75001               |                1 | 389.99
   141267 | Apple Airpods Headphones   | 649 Sunset St, Los Angeles, CA 90001       |                1 | 150.0
   141268 | AA Batteries (4-pack)      | 611 Elm St, New York City, NY 10001        |                1 | 3.84
   141269 | 27in 4K Gaming Monitor     | 812 Jefferson St, Los Angeles, CA 90001    |                1 | 389.99
   141270 | Wired Headphones           | 469 Hill St, San Francisco, CA 94016       |                1 | 11.99
   141271 | USB-C Charging Cable       | 90 13th St, Boston, MA 02215               |                1 | 11.95
   141272 | AAA Batteries (4-pack)     | 818 Lincoln St, New York City, NY 10001    |                1 | 2.99
   141273 | Wired Headphones           | 994 13th St, Boston, MA 02215              |                2 | 11.99
-- More  --
