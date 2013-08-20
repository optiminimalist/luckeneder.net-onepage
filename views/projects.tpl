<div class="vspace" id="projects"></div>
<h2>projects</h2>
#for ($i, $project) in enumerate($projects)
  #if $i%2 == 0
    #set $pull = 'pull-right'
  #else
    #set $pull = 'pull-left'
  #end if
  <div class="featurette">
        <div class="featurette-spacer hidden-sm"></div>
        <img class="featurette-image $pull hidden-sm" src="./static/img/$project.image">
        <h3 class="featurette-heading">$project.title<span class="text-muted">$project.subtitle</span></h3>
        <p class="lead">$project.text</p>

        #if $i+1 < len($projects)
                        <div class="vspace hidden-sm"></div>
                <hr class="featurette-divider">

        #end if
  </div>
#end for



