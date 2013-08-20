<div class="vspace" id="skills"></div>
<h2>skills</h2>
<div class="vspace"></div>
<!-- Three columns of text below the carousel -->

      #for $skills in $skillgroups
        <div class="row skill-row">
          #for $skill in $skills
            <div class="col-lg-4">
              <img class="" src="./static/img/$skill.image" height="140" width="140">
              <h3>$skill.title</h3>
              <p>$skill.text</p>
            </div><!-- /.col-lg-4 -->
          #end for
        </div><!-- /.row -->
      #end for



