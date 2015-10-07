Authorization vs. Authentication
================================

<h2>Authorization:</h2>
  <p>
    Authorization refers to the rules that determine who is allowed to do what.
    E.g. Adam may be authorized to create and delete databases, while Sam is only authorized to read them.
  </p>

<h2>Authentication:</h2>
  <p>
    Authentication is the process of ascertaining that someone really is who they claim to be.
  </p>

<h2></h2>
  <p>
    The two concepts are completely orthogonal and independent, but both are central to security design.
    The failure to get either one correct opens up the avenue to compromise.
  </p>
  <p>
    In terms of web apps, very crudely speaking, authentication is when you check login credentials to see if you recognize a user as logged in,
    and authorization is when you look to your access control to determine whether the user is allowed to edit, delete or create content.
  </p>

<h3>For further information please visit <a href="http://en.wikipedia.org/wiki/AAA_protocol">this link</a></h3>
