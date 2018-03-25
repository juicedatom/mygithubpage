---
layout: post
title:  "Hello World!"
date:   2018-03-25 14:12:12 -0400
categories: jekyll update
---
Welcome to my site, I just set this up!  I will be adding posts to here occasionally so make sure to keep an eye out.  For now, here's a quick Hello World in a couple languages.

# C++
{% highlight cpp %}
#include <iostream>
int main()
{
  std::cout << "Hello World!" << std::endl;
  return 0;
}
{% endhighlight %}

# C
{% highlight c %}
#include <stdio.h>
int main()
{
  printf("Hello World!");
  return 0;
}
{% endhighlight %}

# Java
{% highlight Java %}
public class HelloWorld
{
  public static void main(String args[][])
  {
    System.out.println("Hello World!");
  }
}
{% endhighlight %}

# Rust
{% highlight Rust %}
fn main()
{
  println!("hello World!");
}
{% endhighlight %}

# Bash
{% highlight bash %}
user@computer:~/$ echo 'Hello World'
{% endhighlight %}

# python 2.7
{% highlight python %}
>>> print 'Hello World'
{% endhighlight %}

# python 3.x
{% highlight python %}
>>> print('Hello World')
{% endhighlight %}
