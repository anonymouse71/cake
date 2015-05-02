<div class="profile">
<h1 class="page-title">My Profile</h1>
<div class="row">
<div class="col-md-8">
<form role="form">
<div class="row">
    <div class="col-md-2">
        <label>Picture:</label>
    </div>
    <div class="col-md-10">
        <div class="form-group">
            <div class="row">
                <div class="col-md-4">
                    <img id="uploadPreview1" src="img/avatar.jpg" />
                </div>
                <div class="col-md-8">
                    <input id="uploadImage1" type="file" name="p1" onchange="PreviewImage(1);" />
                    <p>File size - Maximum 1MB. JPG, GIF or PNG</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-2">
        <label>Address:</label>
    </div>
    <div class="col-md-10">
        <div class="form-group">
            <input type="text" class="input form-control" name="address" placeholder="City: Gazipur, Dhaka" />
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-2">
        <label>Birth Date:</label>
    </div>
    <div class="col-md-10">
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <select name="month" class="form-control">
                        <option value="January">January</option>
                        <option value="February">February</option>
                        <option value="March">March</option>
                        <option value="April">April</option>
                        <option value="May">May</option>
                        <option value="June">June</option>
                        <option value="July">July</option>
                        <option value="August">August</option>
                        <option value="September">September</option>
                        <option value="Octaber">Octaber</option>
                        <option value="November">November</option>
                        <option value="December">December</option>
                    </select>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <select name="date" class="form-control">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                    </select>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <select name="month" class="form-control">
                        <option>2030 </option>
                        <option>2029 </option>
                        <option>2028 </option>
                        <option>2027 </option>
                        <option>2026 </option>
                        <option>2025 </option>
                        <option>2024 </option>
                        <option>2023 </option>
                        <option>2022 </option>
                        <option>2021
                        <option>   2020 </option>
                        <option>2019 </option>
                        <option>2018 </option>
                        <option>2017 </option>
                        <option>2016 </option>
                        <option>2015 </option>
                        <option>2014 </option>
                        <option>2013 </option>
                        <option>2012 </option>
                        <option>2011
                        <option>   2010 </option>
                        <option>2009 </option>
                        <option>2008 </option>
                        <option>2007 </option>
                        <option>2006 </option>
                        <option>2005 </option>
                        <option>2004 </option>
                        <option>2003 </option>
                        <option>2002 </option>
                        <option>2001</option>
                        <option>2000 </option>
                        <option>1999 </option>
                        <option>1998 </option>
                        <option>1997 </option>
                        <option>1996 </option>
                        <option>1995 </option>
                        <option>1994 </option>
                        <option>1993 </option>
                        <option>1992 </option>
                        <option>1991
                        <option>   1990 </option>
                        <option>1989 </option>
                        <option>1988 </option>
                        <option>1987 </option>
                        <option>1986 </option>
                        <option>1985 </option>
                        <option>1984 </option>
                        <option>1983 </option>
                        <option>1982 </option>
                        <option>1981
                        <option>    1980 </option>
                        <option>1979 </option>
                        <option>1978 </option>
                        <option>1977 </option>
                        <option>1976 </option>
                        <option>1975 </option>
                        <option>1974 </option>
                        <option>1973 </option>
                        <option>1972 </option>
                        <option>1971</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-2">
        <label>About me:</label>
    </div>
    <div class="col-md-10">
        <div class="form-group">
            <textarea class="form-control"></textarea>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-2">
        <label>Website:</label>
    </div>
    <div class="col-md-10">
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon"><i class="fa fa-globe"></i></div>
                <input type="text" class="form-control" name="personal_web" id="exampleInputEmail2" placeholder="Personal Website">
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-facebook-square"></i></div>
                        <input type="text" class="form-control" name="personal_web" id="exampleInputEmail2" placeholder="http://www.facebook.com">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-google-plus-square"></i></div>
                        <input type="text" class="form-control" name="personal_web" id="exampleInputEmail2" placeholder="http://www.plus.google.com">
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-twitter-square"></i></div>
                        <input type="text" class="form-control" name="personal_web" id="exampleInputEmail2" placeholder="http://www.twitter.com">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-youtube-square"></i></div>
                        <input type="text" class="form-control" name="personal_web" id="exampleInputEmail2" placeholder="http://www.youtube.com">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-2">
        <label>My Courses:</label>
    </div>
    <div class="col-md-10">
        <div class="row">
            <div class="col-sm-4 col-md-4">
                <div class="thumbnail">
                    <img src="img/course-1.jpg" alt="...">
                    <div class="caption">
                        <h4 class="text-center"><a href="#">Programming</a></h4>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-4">
                <div class="thumbnail">
                    <img src="img/course-2.jpg" alt="...">
                    <div class="caption">
                        <h4 class="text-center"><a href="#">Java</a></h4>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-4">
                <div class="thumbnail">
                    <img src="img/course-3.jpg" alt="...">
                    <div class="caption">
                        <h4 class="text-center"><a href="#">Quantum</a></h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-2">
        <label></label>
    </div>
    <div class="col-md-10">
        <button type="submit" class="btn btn-primary">Save</button>
    </div>
</div>
</form>
</div>
<div class="col-md-offset-5"></div>
</div>
</div>