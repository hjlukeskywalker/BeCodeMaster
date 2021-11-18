import React, { useState, useEffect, useContext } from 'react';
import SkeletonElement from '../skeletons/SkeletonElement';
import SkeletonArticle from '../skeletons/SkeletonArticle';
import ThemeContext from '../context/theme';

const Articles = () => {
    const [articles, setArticles] = useState(null);
    const {state} = useContext(ThemeContext);
    useEffect(() => {
        setTimeout(async () => {
            const result = await fetch('https://jsonplaceholder.typicode.com/posts')
            .then(response => response.json())
            .then(data => setArticles(data));
        }, 5000);
    })
    return (
        <div className="articles">
            <h2>Articles</h2>
            {articles && articles.map(article => (
                <div className="article" key={article.id}>
                    <h3>{article.title}</h3>
                    <p>{article.body}</p>
                </div>
            ))}
            {
                !articles && (
                    [1,2,3,4,5].map( n => (
                        <SkeletonArticle key={n} theme={state.theme}/>
                    ))
                )
            }
        </div>
    )
}

export default Articles;