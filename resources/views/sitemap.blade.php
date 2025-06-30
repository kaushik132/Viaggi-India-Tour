@php
    echo '<?xml version="1.0" encoding="UTF-8"?>'
@endphp
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">

    <url>
        <loc>{{url('/')}}</loc>
        <lastmod>2025-06-02T07:54:52+00:00</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>



  <url>
        <loc>{{url('/destinations')}}</loc>
        <lastmod>2025-06-02T07:54:52+00:00</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>

 
    @foreach ($destinations as $destinations)
        
    <url>
        <loc>{{url('/')}}/destination/{{$destinations->slug}}</loc>
        <lastmod>{{$destinations->created_at->tz('UTC')->toAtomString()}}</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>
    @endforeach

      <url>
        <loc>{{url('/packages')}}</loc>
        <lastmod>2025-06-02T07:54:52+00:00</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>

       @foreach ($packages as $packages)
        
    <url>
        <loc>{{url('/')}}/package/{{$packages->slug}}</loc>
        <lastmod>{{$packages->created_at->tz('UTC')->toAtomString()}}</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>
    @endforeach


   

     <url>
        <loc>{{url('/contact-us')}}</loc>
        <lastmod>2025-06-02T07:54:52+00:00</lastmod>
        <changefreq>Weekly</changefreq>
        <priority>0.8</priority>
    </url>




</urlset>